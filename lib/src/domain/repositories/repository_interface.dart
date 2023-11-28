abstract class IRepository<T,R>{
  Future<T> getRecipes();
  Future<R> getRecipeById(int id);
}