{
  description = ''Hashicorp Vault HTTP Client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-vaultclient-master.flake = false;
  inputs.src-vaultclient-master.type = "github";
  inputs.src-vaultclient-master.owner = "jackhftang";
  inputs.src-vaultclient-master.repo = "vaultclient.nim";
  inputs.src-vaultclient-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vaultclient-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vaultclient-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vaultclient-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}