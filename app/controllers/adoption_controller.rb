class AdoptionController < UserAreaController
  def index
    @pets = Pet.all
  end

  def show
  end

  def edit
  end

  def new
  end
end
