{
  description = ''Nim wrapper for the FMOD Low Level C API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fmod-v0_1_1.flake = false;
  inputs.src-fmod-v0_1_1.type = "github";
  inputs.src-fmod-v0_1_1.owner = "johnnovak";
  inputs.src-fmod-v0_1_1.repo = "nim-fmod";
  inputs.src-fmod-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fmod-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fmod-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fmod-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}