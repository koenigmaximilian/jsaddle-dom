{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.StorageQuota
       (queryUsageAndQuota, requestQuota, StorageQuota,
        castToStorageQuota, gTypeStorageQuota)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuota.queryUsageAndQuota Mozilla StorageQuota.queryUsageAndQuota documentation> 
queryUsageAndQuota ::
                   (MonadDOM m) =>
                     StorageQuota ->
                       Maybe StorageUsageCallback -> Maybe StorageErrorCallback -> m ()
queryUsageAndQuota self usageCallback errorCallback
  = liftDOM
      (void
         (self ^. jsf "queryUsageAndQuota"
            [toJSVal usageCallback, toJSVal errorCallback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuota.requestQuota Mozilla StorageQuota.requestQuota documentation> 
requestQuota ::
             (MonadDOM m) =>
               StorageQuota ->
                 Word64 ->
                   Maybe StorageQuotaCallback -> Maybe StorageErrorCallback -> m ()
requestQuota self newQuotaInBytes quotaCallback errorCallback
  = liftDOM
      (void
         (self ^. jsf "requestQuota"
            [toJSVal newQuotaInBytes, toJSVal quotaCallback,
             toJSVal errorCallback]))