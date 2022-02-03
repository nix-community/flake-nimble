{
  description = ''bindings to cimgui - https://github.com/cimgui/cimgui'';
  inputs.src-nimgui-master.flake = false;
  inputs.src-nimgui-master.type = "github";
  inputs.src-nimgui-master.owner = "zacharycarter";
  inputs.src-nimgui-master.repo = "nimgui";
  inputs.src-nimgui-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimgui-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}