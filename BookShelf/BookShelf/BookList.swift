import SwiftUI

struct BookList: View {
    let books = Book.sampleBooks
    var body: some View {
        List(books) { book in
            BookRowView(book: book)
        }
        .listStyle(.plain)
    }
}

#Preview {
    BookList()
}

struct BookRowView: View {
    let book: Book
    var body: some View {
        HStack(alignment: .top) {
            Image(book.largeCoverImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.headline)
                Text("by \(book.author)")
                HStack {
                    Text("\(book.pages) pages")
                    Spacer()
                    Text("\(book.isbn)")
                }
            }
            .font(.subheadline)
        }
    }
}
