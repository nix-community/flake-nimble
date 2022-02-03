{
  description = ''Extends stdlib make it easy on some case'';
  inputs.src-stdext-v0_0_9.flake = false;
  inputs.src-stdext-v0_0_9.type = "github";
  inputs.src-stdext-v0_0_9.owner = "zendbit";
  inputs.src-stdext-v0_0_9.repo = "nim.stdext";
  inputs.src-stdext-v0_0_9.ref = "refs/tags/v0.0.9";
  
  outputs = { self, nixpkgs, src-stdext-v0_0_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stdext-v0_0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stdext-v0_0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}