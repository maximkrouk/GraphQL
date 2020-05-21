import Foundation

/**
 * Given an arbitrary Error, presumably thrown while attempting to execute a
 * GraphQL operation, produce a new GraphQLError aware of the location in the
 * document responsible for the original Error.
 */
func locatedError(originalError: Error, nodes: [Node], path: IndexPath) -> GraphQLError {
    // Note: this uses a brand-check to support GraphQL errors originating from
    // other contexts.
    if let originalError = originalError as? GraphQLError {
        return originalError
    }
    
    let customMessage = (originalError as? SelfEncodableError).map(\.encoded)

    return GraphQLError(
        message: customMessage ?? String(describing: originalError),
        nodes: nodes,
        path: path,
        originalError: originalError
    )
}
