{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-marggers-v0_2_2.flake = false;
  inputs.src-marggers-v0_2_2.type = "github";
  inputs.src-marggers-v0_2_2.owner = "metagn";
  inputs.src-marggers-v0_2_2.repo = "marggers";
  inputs.src-marggers-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-marggers-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-marggers-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-marggers-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}