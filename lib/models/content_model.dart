class ContentModel {
  final String id;
  final String titulo;
  final String subtitle;
  final Map<String, String> conteudo;
  final String imageURL;

  const ContentModel(
      this.id, this.titulo, this.subtitle, this.conteudo, this.imageURL);
}
