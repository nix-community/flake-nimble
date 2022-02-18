{
  description = ''micro and elegant web framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-scorper-v1_0_10.flake = false;
  inputs.src-scorper-v1_0_10.type = "github";
  inputs.src-scorper-v1_0_10.owner = "bung87";
  inputs.src-scorper-v1_0_10.repo = "scorper";
  inputs.src-scorper-v1_0_10.ref = "refs/tags/v1.0.10";
  
  
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

  
  inputs."https://github.com/nortero-code/rx-nim.git".type = "github";
  inputs."https://github.com/nortero-code/rx-nim.git".owner = "riinr";
  inputs."https://github.com/nortero-code/rx-nim.git".repo = "flake-nimble";
  inputs."https://github.com/nortero-code/rx-nim.git".ref = "flake-pinning";
  inputs."https://github.com/nortero-code/rx-nim.git".dir = "nimpkgs/h/https://github.com/nortero-code/rx-nim.git";

  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-scorper-v1_0_10, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scorper-v1_0_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-scorper-v1_0_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}