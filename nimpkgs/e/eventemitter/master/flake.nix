{
  description = ''event emitter for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-eventemitter-master.flake = false;
  inputs.src-eventemitter-master.type = "github";
  inputs.src-eventemitter-master.owner = "al-bimani";
  inputs.src-eventemitter-master.repo = "eventemitter";
  inputs.src-eventemitter-master.ref = "refs/heads/master";
  inputs.src-eventemitter-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-eventemitter-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eventemitter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eventemitter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}