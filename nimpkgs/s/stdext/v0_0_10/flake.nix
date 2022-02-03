{
  description = ''Extends stdlib make it easy on some case'';
  inputs.src-stdext-v0_0_10.flake = false;
  inputs.src-stdext-v0_0_10.type = "github";
  inputs.src-stdext-v0_0_10.owner = "zendbit";
  inputs.src-stdext-v0_0_10.repo = "nim.stdext";
  inputs.src-stdext-v0_0_10.ref = "refs/tags/v0.0.10";
  
  outputs = { self, nixpkgs, src-stdext-v0_0_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stdext-v0_0_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stdext-v0_0_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}