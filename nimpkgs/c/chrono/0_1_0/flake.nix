{
  description = ''Calendars, Timestamps and Timezones utilities.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-chrono-0_1_0.flake = false;
  inputs.src-chrono-0_1_0.type = "github";
  inputs.src-chrono-0_1_0.owner = "treeform";
  inputs.src-chrono-0_1_0.repo = "chrono";
  inputs.src-chrono-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, flakeNimbleLib, src-chrono-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chrono-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chrono-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}