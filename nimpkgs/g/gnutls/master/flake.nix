{
  description = ''GnuTLS wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-gnutls-master.flake = false;
  inputs.src-gnutls-master.type = "github";
  inputs.src-gnutls-master.owner = "FedericoCeratto";
  inputs.src-gnutls-master.repo = "nim-gnutls";
  inputs.src-gnutls-master.ref = "refs/heads/master";
  inputs.src-gnutls-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gnutls-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gnutls-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gnutls-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}