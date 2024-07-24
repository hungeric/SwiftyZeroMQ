//
// Copyright (c) 2016-2017 Ahmad M. Zawawi (azawawi)
//
// This package is distributed under the terms of the MIT license.
// Please see the accompanying LICENSE file for the full text of the license.
//


struct ZeroMQDummy {

    init() {
      _ = ZMQ_VERSION_MAJOR
      _ = zmq_strerror(zmq_errno())!
    }
}
