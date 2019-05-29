<!-- Modal - Update User details -->
<div class="modal fade" id="update_Etapas_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Editar</h4>
            </div>
            <div class="modal-body">
        
              <div id="update"></div>

                <div class="form-group">
                    <label for="update_status_etapa">Status</label>
                    <select class="form-control" name="update_status_etapa" id="update_status_etapa" disabled>
                        <option></option>
                        <option value="1">Ascenso</option>
                        <option value="2">Devaluación</option>

                    </select>
                </div>

                

                <div class="form-group">
                    <label for="update_desc_etapa">Etapa</label>
                    <select class="form-control" name="update_desc_etapa" id="update_desc_etapa" disabled>
                        <option></option>
                        <option value="1">INTEGRACIÓN</option>
                        <option value="2">CONFIANZA</option>
                        <option value="3">INICIATIVA</option>
                        <option value="4">IDENTIDAD</option>
                        <option value="5">TRASCENDENCIA</option>
                        <option value="6">EDUCADOR 1</option>
                        <option value="7">EDUCADOR 2</option>
                        <option value="8">EDUCADOR 3</option>
                        <option value="9">EDUDADOR 4</option>
                        <option value="10">REDUCADO</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="update_fecha_inicio_etapa">Fecha inicio</label>
                    <input type="date" name="update_fecha_inicio_etapa" id="update_fecha_inicio_etapa" class="form-control"/>
                </div>

                 <div class="form-group">
                    <label for="update_fecha_fin_etapa">Fecha Termino</label>
                    <input type="date" name="update_fecha_fin_etapa" id="update_fecha_fin_etapa" class="form-control"/>
                </div>

                <div class="form-group">
                     <label for="update_obser_etapa">Observaciones de etapa</label>
                    <textarea name="update_obser_etapa" id="update_obser_etapa" class="form-control" ></textarea>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-primary" onclick="UpdateEtapasDetails()" >Guardar Cambios</button>
                <input type="hidden" id="hidden_Etapas_id">
            </div>
        </div>
    </div>
</div>
<!-- // Modal -->