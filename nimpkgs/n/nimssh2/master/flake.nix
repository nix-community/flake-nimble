{
  description = ''libssh2 wrapper for Nim'';
  inputs.src-nimssh2-master.flake = false;
  inputs.src-nimssh2-master.type = "github";
  inputs.src-nimssh2-master.owner = "genotrance";
  inputs.src-nimssh2-master.repo = "nimssh2";
  inputs.src-nimssh2-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimssh2-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimssh2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimssh2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}