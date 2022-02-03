{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';
  inputs.src-marggers-v0_2_2.flake = false;
  inputs.src-marggers-v0_2_2.type = "github";
  inputs.src-marggers-v0_2_2.owner = "metagn";
  inputs.src-marggers-v0_2_2.repo = "marggers";
  inputs.src-marggers-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-marggers-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-marggers-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-marggers-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}