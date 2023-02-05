target_precompile_headers(musikcore
  PRIVATE
    "$<$<COMPILE_LANGUAGE:CXX>:<set$<ANGLE-R>>"
    "$<$<COMPILE_LANGUAGE:CXX>:<vector$<ANGLE-R>>"
    "$<$<COMPILE_LANGUAGE:CXX>:<map$<ANGLE-R>>"
    "$<$<COMPILE_LANGUAGE:CXX>:<string$<ANGLE-R>>"
    "$<$<COMPILE_LANGUAGE:CXX>:<algorithm$<ANGLE-R>>"
    "$<$<COMPILE_LANGUAGE:CXX>:<unordered_map$<ANGLE-R>>"
    "$<$<COMPILE_LANGUAGE:CXX>:<thread$<ANGLE-R>>"
    "$<$<COMPILE_LANGUAGE:CXX>:<cmath$<ANGLE-R>>"
    "$<$<COMPILE_LANGUAGE:CXX>:<string$<ANGLE-R>>"
    "$<$<COMPILE_LANGUAGE:CXX>:<nlohmann/json.hpp$<ANGLE-R>>"
    "$<$<COMPILE_LANGUAGE:CXX>:<sigslot/sigslot.h$<ANGLE-R>>"

  PUBLIC
    "$<$<COMPILE_LANGUAGE:CXX>:config.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:i18n/Locale.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:audio/Buffer.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:audio/Crossfader.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:audio/CrossfadeTransport.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:audio/GaplessTransport.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:audio/IStream.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:audio/ITransport.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:audio/MasterTransport.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:audio/Outputs.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:audio/PlaybackService.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:audio/Player.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:audio/Stream.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:audio/Streams.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:audio/Visualizer.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:db/Connection.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:db/ScopedTransaction.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:db/SqliteExtensions.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:db/Statement.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:debug.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:io/DataStreamFactory.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:io/LocalFileStream.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/IIndexer.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/ILibrary.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/Indexer.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/IQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/LibraryFactory.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/LocalLibrary.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/LocalLibraryConstants.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/LocalMetadataProxy.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/MasterLibrary.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/metadata/MetadataMap.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/metadata/MetadataMapList.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/AlbumListQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/AllCategoriesQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/AppendPlaylistQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/CategoryListQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/CategoryTrackListQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/DeletePlaylistQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/DirectoryTrackListQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/GetPlaylistQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/LyricsQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/MarkTrackPlayedQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/NowPlayingTrackListQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/PersistedPlayQueueQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/SavePlaylistQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/SearchTrackListQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/SetTrackRatingQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/TrackListQueryBase.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/TrackMetadataBatchQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/TrackMetadataQuery.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/util/CategoryQueryUtil.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/util/SdkWrappers.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/util/Serialization.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/util/TrackQueryFragments.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/query/util/TrackSort.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/QueryBase.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/QueryRegistry.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/RemoteLibrary.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/track/IndexerTrack.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/track/LibraryTrack.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/track/Track.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:library/track/TrackList.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:net/RawWebSocketClient.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:net/WebSocketClient.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:plugin/PluginFactory.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:plugin/Plugins.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:runtime/IMessage.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:runtime/IMessageQueue.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:runtime/IMessageTarget.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:runtime/Message.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:runtime/MessageQueue.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/constants.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/DataBuffer.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/Filesystem.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IAllocator.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IAnalyzer.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IBlockingEncoder.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IBuffer.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IBufferProvider.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IDataStream.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IDataStreamFactory.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IDebug.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IDecoder.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IDecoderFactory.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IDevice.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IDSP.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IEncoder.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IEncoderFactory.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IEnvironment.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IIndexerNotifier.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IIndexerSource.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IIndexerWriter.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IMap.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IMapList.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IMetadataProxy.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IOutput.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IPcmVisualizer.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IPlaybackRemote.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IPlaybackService.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IPlugin.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IPreferences.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IResource.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/ISchema.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/ISpectrumVisualizer.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IStreamingEncoder.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/ITagReader.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/ITagStore.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/ITrack.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/ITrackList.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/ITrackListEditor.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IValue.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IValueList.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/IVisualizer.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/ReplayGain.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/String.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:sdk/version.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:support/Auddio.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:support/Common.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:support/DeleteDefaults.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:support/Duration.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:support/LastFm.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:support/Messages.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:support/NarrowCast.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:support/Playback.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:support/PreferenceKeys.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:support/Preferences.h>"
    "$<$<COMPILE_LANGUAGE:CXX>:utfutil.h>"
)

