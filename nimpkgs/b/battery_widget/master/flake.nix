{
  description = ''Battery widget for command prompt. Written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-battery_widget-master.flake = false;
  inputs.src-battery_widget-master.type = "github";
  inputs.src-battery_widget-master.owner = "Cu7ious";
  inputs.src-battery_widget-master.repo = "nim-battery-widget";
  inputs.src-battery_widget-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-battery_widget-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-battery_widget-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-battery_widget-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}