{
  description = ''The Ultimate Raylib gaming library wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimraylib_now-v0_12_3.flake = false;
  inputs.src-nimraylib_now-v0_12_3.type = "github";
  inputs.src-nimraylib_now-v0_12_3.owner = "greenfork";
  inputs.src-nimraylib_now-v0_12_3.repo = "nimraylib_now";
  inputs.src-nimraylib_now-v0_12_3.ref = "refs/tags/v0.12.3";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimraylib_now-v0_12_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimraylib_now-v0_12_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimraylib_now-v0_12_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}