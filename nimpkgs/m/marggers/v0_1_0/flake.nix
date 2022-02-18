{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-marggers-v0_1_0.flake = false;
  inputs.src-marggers-v0_1_0.type = "github";
  inputs.src-marggers-v0_1_0.owner = "metagn";
  inputs.src-marggers-v0_1_0.repo = "marggers";
  inputs.src-marggers-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-marggers-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-marggers-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-marggers-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}