{
  description = ''A consistent markup language'';
  inputs.src-xidoc-master.flake = false;
  inputs.src-xidoc-master.type = "github";
  inputs.src-xidoc-master.owner = "xigoi";
  inputs.src-xidoc-master.repo = "xidoc";
  inputs.src-xidoc-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."npeg".url = "path:../../../n/npeg";
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  outputs = { self, nixpkgs, src-xidoc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xidoc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xidoc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}