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

package com.github.internal.message.service;

import com.github.internal.message.DefaultMessageFactory;
import com.github.internal.message.DefaultMessageInterfaceClassProvider;
import com.github.internal.message.MessageProxyFactory;
import com.github.message.MessageDeclaration;
import com.github.message.MessageDefinitionProvider;
import com.github.message.MessageFactory;

/**
 * @author damonkohler@google.com (Damon Kohler)
 */
public class ServiceResponseMessageFactory implements MessageFactory {

  private final ServiceDescriptionFactory serviceDescriptionFactory;
  private final MessageFactory messageFactory;
  private final MessageProxyFactory messageProxyFactory;

  public ServiceResponseMessageFactory(MessageDefinitionProvider messageDefinitionProvider) {
    serviceDescriptionFactory = new ServiceDescriptionFactory(messageDefinitionProvider);
    messageFactory = new DefaultMessageFactory(messageDefinitionProvider);
    messageProxyFactory = new MessageProxyFactory(new DefaultMessageInterfaceClassProvider(), messageFactory);
  }

  @Override
  public <T> T newFromType(String serviceType) {
    ServiceDescription serviceDescription = serviceDescriptionFactory.newFromType(serviceType);
    MessageDeclaration messageDeclaration = MessageDeclaration.of(serviceDescription.getResponseType(),
        serviceDescription.getResponseDefinition());
    return messageProxyFactory.newMessageProxy(messageDeclaration);
  }
}
