{
  description = ''A Beautiful Markdown Parser in the Nim World.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-markdown-v0_8_1.flake = false;
  inputs.src-markdown-v0_8_1.type = "github";
  inputs.src-markdown-v0_8_1.owner = "soasme";
  inputs.src-markdown-v0_8_1.repo = "nim-markdown";
  inputs.src-markdown-v0_8_1.ref = "refs/tags/v0.8.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-markdown-v0_8_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-markdown-v0_8_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-markdown-v0_8_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}