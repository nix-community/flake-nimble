{
  description = ''A consistent markup language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-xidoc-2021_11_27.flake = false;
  inputs.src-xidoc-2021_11_27.type = "github";
  inputs.src-xidoc-2021_11_27.owner = "xigoi";
  inputs.src-xidoc-2021_11_27.repo = "xidoc";
  inputs.src-xidoc-2021_11_27.ref = "refs/tags/2021.11.27";
  inputs.src-xidoc-2021_11_27.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."npeg".type = "github";
  # inputs."npeg".owner = "riinr";
  # inputs."npeg".repo = "flake-nimble";
  # inputs."npeg".ref = "flake-pinning";
  # inputs."npeg".dir = "nimpkgs/n/npeg";
  # inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-xidoc-2021_11_27, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xidoc-2021_11_27;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xidoc-2021_11_27"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}