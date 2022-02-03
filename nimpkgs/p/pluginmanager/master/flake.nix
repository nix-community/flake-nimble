{
  description = ''Simple plugin implementation'';
  inputs.src-pluginmanager-master.flake = false;
  inputs.src-pluginmanager-master.type = "github";
  inputs.src-pluginmanager-master.owner = "samdmarshall";
  inputs.src-pluginmanager-master.repo = "plugin-manager";
  inputs.src-pluginmanager-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pluginmanager-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pluginmanager-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pluginmanager-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}