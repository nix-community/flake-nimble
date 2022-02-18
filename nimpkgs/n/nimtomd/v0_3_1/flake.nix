{
  description = ''Convert a Nim file or string to Markdown'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimtomd-v0_3_1.flake = false;
  inputs.src-nimtomd-v0_3_1.type = "github";
  inputs.src-nimtomd-v0_3_1.owner = "ThomasTJdev";
  inputs.src-nimtomd-v0_3_1.repo = "nimtomd";
  inputs.src-nimtomd-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimtomd-v0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtomd-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimtomd-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}