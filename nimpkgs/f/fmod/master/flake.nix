{
  description = ''Nim wrapper for the FMOD Low Level C API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fmod-master.flake = false;
  inputs.src-fmod-master.type = "github";
  inputs.src-fmod-master.owner = "johnnovak";
  inputs.src-fmod-master.repo = "nim-fmod";
  inputs.src-fmod-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fmod-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fmod-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fmod-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}