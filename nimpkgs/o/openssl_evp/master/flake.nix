{
  description = ''Wrapper for OpenSSL's EVP interface'';
  inputs.src-openssl_evp-master.flake = false;
  inputs.src-openssl_evp-master.type = "github";
  inputs.src-openssl_evp-master.owner = "cowboy-coders";
  inputs.src-openssl_evp-master.repo = "nim-openssl-evp";
  inputs.src-openssl_evp-master.ref = "refs/heads/master";
  
  
  inputs."nimrod".url = "path:../../../n/nimrod";
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-openssl_evp-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openssl_evp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-openssl_evp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}