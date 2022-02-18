{
  description = ''Support for serialization of objects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-serializetools-master.flake = false;
  inputs.src-serializetools-master.type = "github";
  inputs.src-serializetools-master.owner = "JeffersonLab";
  inputs.src-serializetools-master.repo = "serializetools";
  inputs.src-serializetools-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-serializetools-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serializetools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-serializetools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}