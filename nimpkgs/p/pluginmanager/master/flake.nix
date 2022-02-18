{
  description = ''Simple plugin implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pluginmanager-master.flake = false;
  inputs.src-pluginmanager-master.type = "github";
  inputs.src-pluginmanager-master.owner = "samdmarshall";
  inputs.src-pluginmanager-master.repo = "plugin-manager";
  inputs.src-pluginmanager-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pluginmanager-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pluginmanager-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pluginmanager-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}