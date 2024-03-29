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

package com.github.internal.message;

import org.jboss.netty.buffer.ChannelBuffer;
import com.github.internal.message.field.Field;
import com.github.message.MessageDeserializer;
import com.github.message.MessageFactory;
import com.github.message.MessageIdentifier;

/**
 * @author damonkohler@google.com (Damon Kohler)
 */
public class DefaultMessageDeserializer<T> implements MessageDeserializer<T> {

  private final MessageIdentifier messageIdentifier;
  private final MessageFactory messageFactory;

  public DefaultMessageDeserializer(MessageIdentifier messageIdentifier,
      MessageFactory messageFactory) {
    this.messageIdentifier = messageIdentifier;
    this.messageFactory = messageFactory;
  }

  @SuppressWarnings("unchecked")
  @Override
  public T deserialize(ChannelBuffer buffer) {
    Message message = messageFactory.newFromType(messageIdentifier.getType());
    for (Field field : message.toRawMessage().getFields()) {
      if (!field.isConstant()) {
        field.deserialize(buffer);
      }
    }
    return (T) message;
  }
}
