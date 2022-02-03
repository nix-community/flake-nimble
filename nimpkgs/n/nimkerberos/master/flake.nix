{
  description = ''WinKerberos wrapper for Nim'';
  inputs.src-nimkerberos-master.flake = false;
  inputs.src-nimkerberos-master.type = "github";
  inputs.src-nimkerberos-master.owner = "genotrance";
  inputs.src-nimkerberos-master.repo = "nimkerberos";
  inputs.src-nimkerberos-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".url = "path:../../../n/nimgen";
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimkerberos-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimkerberos-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimkerberos-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}