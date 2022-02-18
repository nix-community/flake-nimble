{
  description = ''Calendars, Timestamps and Timezones utilities.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-chrono-0_2_0.flake = false;
  inputs.src-chrono-0_2_0.type = "github";
  inputs.src-chrono-0_2_0.owner = "treeform";
  inputs.src-chrono-0_2_0.repo = "chrono";
  inputs.src-chrono-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chrono-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chrono-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chrono-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}