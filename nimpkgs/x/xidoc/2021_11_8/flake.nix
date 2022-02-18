{
  description = ''A consistent markup language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-xidoc-2021_11_8.flake = false;
  inputs.src-xidoc-2021_11_8.type = "github";
  inputs.src-xidoc-2021_11_8.owner = "xigoi";
  inputs.src-xidoc-2021_11_8.repo = "xidoc";
  inputs.src-xidoc-2021_11_8.ref = "refs/tags/2021.11.8";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-xidoc-2021_11_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xidoc-2021_11_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xidoc-2021_11_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}