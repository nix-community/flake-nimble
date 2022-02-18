{
  description = ''Create files of the desired size'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fwrite-v1_0_0.flake = false;
  inputs.src-fwrite-v1_0_0.type = "github";
  inputs.src-fwrite-v1_0_0.owner = "pdrb";
  inputs.src-fwrite-v1_0_0.repo = "nim-fwrite";
  inputs.src-fwrite-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fwrite-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fwrite-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fwrite-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}