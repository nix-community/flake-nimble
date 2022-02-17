{
  description = ''A consistent markup language'';
  inputs.src-xidoc-2021_10_26.flake = false;
  inputs.src-xidoc-2021_10_26.type = "github";
  inputs.src-xidoc-2021_10_26.owner = "xigoi";
  inputs.src-xidoc-2021_10_26.repo = "xidoc";
  inputs.src-xidoc-2021_10_26.ref = "refs/tags/2021.10.26";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  outputs = { self, nixpkgs, src-xidoc-2021_10_26, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xidoc-2021_10_26;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xidoc-2021_10_26"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}