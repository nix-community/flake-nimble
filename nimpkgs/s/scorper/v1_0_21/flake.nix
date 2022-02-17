{
  description = ''micro and elegant web framework'';
  inputs.src-scorper-v1_0_21.flake = false;
  inputs.src-scorper-v1_0_21.type = "github";
  inputs.src-scorper-v1_0_21.owner = "bung87";
  inputs.src-scorper-v1_0_21.repo = "scorper";
  inputs.src-scorper-v1_0_21.ref = "refs/tags/v1.0.21";
  
  
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";

  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  
  inputs."result".type = "github";
  inputs."result".owner = "riinr";
  inputs."result".repo = "flake-nimble";
  inputs."result".ref = "flake-pinning";
  inputs."result".dir = "nimpkgs/r/result";

  
  inputs."urlly".type = "github";
  inputs."urlly".owner = "riinr";
  inputs."urlly".repo = "flake-nimble";
  inputs."urlly".ref = "flake-pinning";
  inputs."urlly".dir = "nimpkgs/u/urlly";

  outputs = { self, nixpkgs, src-scorper-v1_0_21, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scorper-v1_0_21;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-scorper-v1_0_21"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}