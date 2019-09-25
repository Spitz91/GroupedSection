struct GroupedSection<Identifier: Hashable, Row> {

    var identifier : Identifier
    var rows : [Row]

    static func group(_ rows : [Row], by indentifierForRow: (Row) -> Identifier) -> [GroupedSection<Identifier, Row>] {
        return Dictionary(grouping: rows, by: indentifierForRow)
            .map(GroupedSection.init)
    }
}
