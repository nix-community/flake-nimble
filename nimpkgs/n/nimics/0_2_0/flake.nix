{
  description = ''Create ICS files for email invites, eg. invite.ics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimics-0_2_0.flake = false;
  inputs.src-nimics-0_2_0.type = "github";
  inputs.src-nimics-0_2_0.owner = "ThomasTJdev";
  inputs.src-nimics-0_2_0.repo = "nimics";
  inputs.src-nimics-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-nimics-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimics-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimics-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimics-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}