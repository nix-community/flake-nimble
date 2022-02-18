{
  description = ''Nim wrapper for the FMOD Low Level C API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fmod-v0_1_0.flake = false;
  inputs.src-fmod-v0_1_0.type = "github";
  inputs.src-fmod-v0_1_0.owner = "johnnovak";
  inputs.src-fmod-v0_1_0.repo = "nim-fmod";
  inputs.src-fmod-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fmod-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fmod-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fmod-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}