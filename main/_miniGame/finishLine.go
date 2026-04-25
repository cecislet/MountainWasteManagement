components {
  id: "element"
  component: "/_scripts/MiniGame/element.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"finish_line\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/_miniGame/_elements.atlas\"\n"
  "}\n"
  ""
  scale {
    x: 1.638554
    y: 0.435294
  }
}
embedded_components {
  id: "collisionobject"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_TRIGGER\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"FinishLine\"\n"
  "mask: \"Player\"\n"
  "mask: \"Map\"\n"
  "mask: \"Tree\"\n"
  "mask: \"Rock\"\n"
  "mask: \"Coin\"\n"
  "mask: \"KnowledgeItem\"\n"
  "mask: \"KnowledgePowerUp\"\n"
  "mask: \"CoinPowerUp\"\n"
  "mask: \"FinishLine\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      z: 0.1\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "    id: \"hitbox\"\n"
  "  }\n"
  "  data: 26.27907\n"
  "  data: 7.032967\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
