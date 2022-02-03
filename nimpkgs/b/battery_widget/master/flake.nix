{
  description = ''Battery widget for command prompt. Written in Nim'';
  inputs.src-battery_widget-master.flake = false;
  inputs.src-battery_widget-master.type = "github";
  inputs.src-battery_widget-master.owner = "Cu7ious";
  inputs.src-battery_widget-master.repo = "nim-battery-widget";
  inputs.src-battery_widget-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-battery_widget-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-battery_widget-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-battery_widget-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}