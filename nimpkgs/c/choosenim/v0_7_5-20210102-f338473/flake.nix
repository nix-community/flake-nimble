{
  description = ''The Nim toolchain installer.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-choosenim-v0_7_5-20210102-f338473.flake = false;
  inputs.src-choosenim-v0_7_5-20210102-f338473.type = "github";
  inputs.src-choosenim-v0_7_5-20210102-f338473.owner = "dom96";
  inputs.src-choosenim-v0_7_5-20210102-f338473.repo = "choosenim";
  inputs.src-choosenim-v0_7_5-20210102-f338473.ref = "refs/tags/v0.7.5-20210102-f338473";
  
  
  inputs."nimble".type = "github";
  inputs."nimble".owner = "riinr";
  inputs."nimble".repo = "flake-nimble";
  inputs."nimble".ref = "flake-pinning";
  inputs."nimble".dir = "nimpkgs/n/nimble";

  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  
  inputs."nimarchive".type = "github";
  inputs."nimarchive".owner = "riinr";
  inputs."nimarchive".repo = "flake-nimble";
  inputs."nimarchive".ref = "flake-pinning";
  inputs."nimarchive".dir = "nimpkgs/n/nimarchive";

  
  inputs."analytics".type = "github";
  inputs."analytics".owner = "riinr";
  inputs."analytics".repo = "flake-nimble";
  inputs."analytics".ref = "flake-pinning";
  inputs."analytics".dir = "nimpkgs/a/analytics";

  
  inputs."osinfo".type = "github";
  inputs."osinfo".owner = "riinr";
  inputs."osinfo".repo = "flake-nimble";
  inputs."osinfo".ref = "flake-pinning";
  inputs."osinfo".dir = "nimpkgs/o/osinfo";

  outputs = { self, nixpkgs, flakeNimbleLib, src-choosenim-v0_7_5-20210102-f338473, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-choosenim-v0_7_5-20210102-f338473;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-choosenim-v0_7_5-20210102-f338473"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}