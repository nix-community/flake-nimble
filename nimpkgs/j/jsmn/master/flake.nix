{
  description = ''Jsmn - a world fastest JSON parser - in pure Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jsmn-master.flake = false;
  inputs.src-jsmn-master.type = "github";
  inputs.src-jsmn-master.owner = "OpenSystemsLab";
  inputs.src-jsmn-master.repo = "jsmn.nim";
  inputs.src-jsmn-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jsmn-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsmn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jsmn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}