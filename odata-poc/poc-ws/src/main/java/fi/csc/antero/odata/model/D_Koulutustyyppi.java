package fi.csc.antero.odata.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Size;
import java.util.List;

/**
 * D_Koulutustyyppi entity
 *
 * @author aki.heikkinen@arcusys.fi
 */
@Entity(name = "D_KOULUTUSTYYPPI")
public class D_Koulutustyyppi {

    private String koulutustyyppi_koodi;
    private String selite;
    private String selite_sv;
    private String selite_en;
    private List<F_AMK_Opintopiste> opintopisteet;

    public D_Koulutustyyppi() {}

    @Id
    @Size(max = 5)
    public String getKoulutustyyppi_koodi() {
        return koulutustyyppi_koodi;
    }

    public void setKoulutustyyppi_koodi(String koulutustyyppi_koodi) {
        this.koulutustyyppi_koodi = koulutustyyppi_koodi;
    }

    @Column
    @Size(max = 200)
    public String getSelite() {
        return selite;
    }

    public void setSelite(String selite) {
        this.selite = selite;
    }

    @Column(nullable = true)
    @Size(max = 200)
    public String getSelite_sv() {
        return selite_sv;
    }

    public void setSelite_sv(String selite_sv) {
        this.selite_sv = selite_sv;
    }

    @Column(nullable = true)
    @Size(max = 200)
    public String getSelite_en() {
        return selite_en;
    }

    public void setSelite_en(String selite_en) {
        this.selite_en = selite_en;
    }

    @OneToMany(mappedBy = "koulutustyyppi_koodi")
    public List<F_AMK_Opintopiste> getOpintopisteet() {
        return opintopisteet;
    }

    public void setOpintopisteet(List<F_AMK_Opintopiste> opintopisteet) {
        this.opintopisteet = opintopisteet;
    }
}
