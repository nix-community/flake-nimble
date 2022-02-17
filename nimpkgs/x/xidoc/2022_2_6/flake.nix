{
  description = ''A consistent markup language'';
  inputs.src-xidoc-2022_2_6.flake = false;
  inputs.src-xidoc-2022_2_6.type = "github";
  inputs.src-xidoc-2022_2_6.owner = "xigoi";
  inputs.src-xidoc-2022_2_6.repo = "xidoc";
  inputs.src-xidoc-2022_2_6.ref = "refs/tags/2022.2.6";
  
  
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

  outputs = { self, nixpkgs, src-xidoc-2022_2_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xidoc-2022_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xidoc-2022_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}