{
  description = ''A consistent markup language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xidoc-2021_10_24.flake = false;
  inputs.src-xidoc-2021_10_24.type = "github";
  inputs.src-xidoc-2021_10_24.owner = "xigoi";
  inputs.src-xidoc-2021_10_24.repo = "xidoc";
  inputs.src-xidoc-2021_10_24.ref = "refs/tags/2021.10.24";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-xidoc-2021_10_24, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xidoc-2021_10_24;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xidoc-2021_10_24"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}