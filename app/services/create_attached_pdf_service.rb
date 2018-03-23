class CreateAttachedPdfService
  def initialize(connect, pdf:)
    @connect = connect
    @pdf     = pdf
  end

  def run
    if @connect.save
      create_attached_pdf
    else
      { message: 'There was a problem saving the PDF', success: false }
    end
  end

  private

  def create_attached_pdf
    new_pdf       = AttachedPdf.new
    new_pdf.owner = @connect
    new_pdf.pdf   = @pdf
    if new_pdf.save
      { message: 'PDF Saved!', success: true }
    else
      { message:'PDF not saved', success: false }
    end
  end
end
