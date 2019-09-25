public struct GroupedSection<Identifier: Hashable, Row> {

    public let identifier : Identifier
    public let rows : [Row]

    public static func group(_ rows : [Row], by indentifierForRow: (Row) -> Identifier) -> [GroupedSection<Identifier, Row>] {
        return Dictionary(grouping: rows, by: indentifierForRow)
            .map(GroupedSection.init)
    }
}
