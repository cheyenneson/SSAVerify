include "Helpers/Structs.dfy"

module CertChain {
  import opened Structs

  method set_certificate_chain(tls_opts : tls_opts, conn_ctx : tls_conn_ctx, filepath : string) returns (y : int)
    requires tls_opts != null
    requires filepath != null
    // ensures that there is a valid cetificate chain set afterward
    ensures y != 0
  {
    var cur_opts := new tls_opts;
    if conn_ctx == null { // no connection yet
      if tls_opts == null {
        return 0; // y := 0
      }
      cur_opts := tls_opts;
      if cur_opts.tls_ctx == null {
        // verify that filepath exists and has valid cert chain
        // take filepath and load it into the SSL_CTX
      }

      else {

      }

    }
    else { // already has connection

    }
  }
}