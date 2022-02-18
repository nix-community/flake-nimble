{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hastyscribe-v1_11_0.flake = false;
  inputs.src-hastyscribe-v1_11_0.type = "github";
  inputs.src-hastyscribe-v1_11_0.owner = "h3rald";
  inputs.src-hastyscribe-v1_11_0.repo = "hastyscribe";
  inputs.src-hastyscribe-v1_11_0.ref = "refs/tags/v1.11.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hastyscribe-v1_11_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastyscribe-v1_11_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hastyscribe-v1_11_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}