//
// Copyright (c) ZeroC, Inc. All rights reserved.
//

#pragma once

module Demo
{
    exception FetchException
    {
        string reason;
    }

    interface Fetcher
    {
        idempotent string fetch(string url)
            throws FetchException;

        void shutdown();
    }
}
