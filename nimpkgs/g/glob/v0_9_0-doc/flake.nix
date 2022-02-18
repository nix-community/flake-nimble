{
  description = ''Pure library for matching file paths against Unix style glob patterns.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-glob-v0_9_0-doc.flake = false;
  inputs.src-glob-v0_9_0-doc.type = "github";
  inputs.src-glob-v0_9_0-doc.owner = "haltcase";
  inputs.src-glob-v0_9_0-doc.repo = "glob";
  inputs.src-glob-v0_9_0-doc.ref = "refs/tags/v0.9.0-doc";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, flakeNimbleLib, src-glob-v0_9_0-doc, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-glob-v0_9_0-doc;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-glob-v0_9_0-doc"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}