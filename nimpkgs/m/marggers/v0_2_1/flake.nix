{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';
  inputs.src-marggers-v0_2_1.flake = false;
  inputs.src-marggers-v0_2_1.type = "github";
  inputs.src-marggers-v0_2_1.owner = "metagn";
  inputs.src-marggers-v0_2_1.repo = "marggers";
  inputs.src-marggers-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-marggers-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-marggers-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-marggers-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}