/*
 * Copyright 2017 Ryan Y.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.protingumas.detail;

import org.protingumas.core.Data;
import org.junit.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;

public class BTest {
    @Test
    public void testBSavesDataAndLeavesItAlone() {
        Data data = new Data();
        B b = new B();
        data.x = 3;
        b.process(data);
        assertThat(b.data.x, equalTo(3));
    }
}
