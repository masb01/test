<?php
/*
 * Copyright 2008 Samisa Abeysinghe
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
 
require "RESTClient.php";

$client = new RESTClient();

$result = $client->get("http://search.yahooapis.com/WebSearchService/V1/spellingSuggestion", 
                       array( "appid" => "YahooDemo", 
                              "query" => "apocalipto"));

printf("Response = %s <br>", htmlspecialchars($result));

?>