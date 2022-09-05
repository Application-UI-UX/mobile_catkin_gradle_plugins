/*
 * Copyright (C) 2011 Google Inc.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

package com.github.internal.message.context;

import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;

import com.github.internal.message.definition.MessageDefinitionParser;
import com.github.internal.message.definition.MessageDefinitionParser.MessageDefinitionVisitor;
import com.github.message.MessageDeclaration;
import com.github.message.MessageFactory;

import java.util.Map;

/**
 * @author damonkohler@google.com (Damon Kohler)
 */
public class MessageContextProvider {

  private final Map<MessageDeclaration, MessageContext> cache;
  private final MessageFactory messageFactory;

  public MessageContextProvider(MessageFactory messageFactory) {
    Preconditions.checkNotNull(messageFactory);
    this.messageFactory = messageFactory;
    cache = Maps.newConcurrentMap();
  }

  public MessageContext get(MessageDeclaration messageDeclaration) {
    MessageContext messageContext = cache.get(messageDeclaration);
    if (messageContext == null) {
      messageContext = new MessageContext(messageDeclaration, messageFactory);
      MessageDefinitionVisitor visitor = new MessageContextBuilder(messageContext);
      MessageDefinitionParser messageDefinitionParser = new MessageDefinitionParser(visitor);
      messageDefinitionParser.parse(messageDeclaration.getType(),
          messageDeclaration.getDefinition());
      cache.put(messageDeclaration, messageContext);
    }
    return messageContext;
  }
}
