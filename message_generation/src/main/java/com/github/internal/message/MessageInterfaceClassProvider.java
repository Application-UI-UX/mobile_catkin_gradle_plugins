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

/**
 * @author damonkohler@google.com (Damon Kohler)
 */
public interface MessageInterfaceClassProvider {

  /**
   * @param <T>
   *                    the message interface class type
   * @param messageType
   *                    the type of message to provide an interface class for
   * @return the interface class for the specified message type
   */
  <T> Class<T> get(String messageType);
}
